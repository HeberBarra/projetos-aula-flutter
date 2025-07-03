# -*- coding: utf-8 -*-
"""
 Copyright (C) 2025 Heber Ferreira Barra.
 Licensed under the Massachusetts Institute of Technology (MIT) License.
 You may obtain a copy of the license at:

 https://choosealicense.com/licenses/mit/

 A short and simple permissive license with conditions only requiring preservation of copyright and license notices.
 Licensed works, modifications, and larger works may be distributed under different terms and without source code.
"""
import os
import platform
from pathlib import Path


ACTIVITIES_DIRECTORY = 'atividades'
APPLICATION_LIB_DIRECTORY = 'lib'


def list_activities() -> list[str]:
    return [ file.path for file in os.scandir(ACTIVITIES_DIRECTORY) if file.is_dir() ]


def print_activities_names(activities: list[str]) -> None:
    for index, valor in enumerate(activities):
        print(f'[ {index:0>3} ] {valor}')


def create_junction(source_directory: str):
    if 'Windows' in platform.system():
        import _winapi

        try:
            Path.unlink(APPLICATION_LIB_DIRECTORY)
        except PermissionError:
            print('It wasn\'t possible to delete the lib directory, try deleting it manually')
            return
        except FileNotFoundError:
            pass

        _winapi.CreateJunction(source_directory, APPLICATION_LIB_DIRECTORY)
    else:
        print('Can only create junctions in a Windows Environment')


def main():
    activities_list = list_activities()
    activity: str
    print_activities_names(activities_list)

    try:
        index_activity = int(input('> '))
        activity = activities_list[index_activity]
    except ValueError:
        print('Invalid value!')
        return
    except IndexError:
        print('Invalid activity number!')
        return

    print(f'Switching to {activity}...')
    create_junction(activities_list[index_activity])


if __name__ == '__main__':
    main()

import os


ACTIVITIES_DIRECTORY = 'atividades'


def list_activities() -> list[str]:
    return [ file.path for file in os.scandir(ACTIVITIES_DIRECTORY) if file.is_dir() ]


def print_activities_names(activities: list[str]) -> None:
    for index, valor in enumerate(activities):
        print(f'[ {index:0^3} ] {valor}')


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


if __name__ == '__main__':
    main()


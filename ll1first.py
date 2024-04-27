def first(productions, non_terminal):
    first_set = set()

    if non_terminal not in productions:
        return first_set

    for expression in productions[non_terminal]:
        if expression[0].islower() or expression[0] == '':
            first_set.add(expression[0])
        elif expression[0].isupper():
            first_set.update(first(productions, expression[0]))

    return first_set

# Example usage:
productions = {
    'S': ['ab', 'bA']
}
non_terminal = 'S'
first_set = first(productions, non_terminal)
print(f'First({non_terminal}): {first_set}')

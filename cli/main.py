#!/usr/bin/python

from PyInquirer import prompt
import os

tools_to_install_prompt = [
  {
    'type': 'checkbox',
    'message': 'Which tools do you want to install?',
    'name': 'tools_to_install',
    'choices': [ 
      {
        'name': 'AWS CLI',
        'value': 'aws-cli.sh'
      },
      {
        'name': 'Git',
        'value': 'value.sh'
      },
      {
        'name': 'GitHub SSh Keygen',
        'value': 'github-ssh.sh'
      },
      {
        'name': 'GraphiQL',
        'value': 'graphiql.sh'
      },
      {
        'name': 'Homebrew',
        'value': 'homebrew.sh'
      },
      {
        'name': 'NVM',
        'value': 'nvm.sh'
      },
      {
        'name': 'VS Code',
        'value': 'vs-code.sh'
      },
    ]
  }
]

fish_install = [
  {
    'type': 'confirm',
    'message': 'Do you want to install FISH?',
    'name': 'will_install_fish',
    'default': True,
  }
]

tools_to_install = prompt(tools_to_install_prompt)


for tool_path in tools_to_install['tools_to_install']:
  path_to_tool = 'sh scripts/tools/' + tool_path
  os.system(path_to_tool)


fish_install_answer = prompt(fish_install)

should_install_fish = fish_install_answer['will_install_fish']

if should_install_fish:
  print('Installing FISH')

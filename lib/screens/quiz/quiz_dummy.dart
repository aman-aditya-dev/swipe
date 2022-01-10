const quizDummy = {
  "status": "success",
  "result": [
    {
      'category_type': 'Technology',
      'quizes': [
        {
          'sub_category': 'React Beginning',
          'image':
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxARERAODhAOEA4ODhAQDg4ODhAODg4OFhIXFxYSFhYZHioiGRsnHBYWLzMjJystMTAxGCE2OzY7RiowMC0BCwsLDw4PGBERGC0eFh4tLy0tLS0tLS8tLy0tLy8vLy8vLS8vMC0tLy0tLy8vLS8tLy8vLy0vLy0tLy8tLy0vL//AABEIAKIBNwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwABBAUGB//EADgQAAICAQIDBgQDBwQDAAAAAAABAgMRBBIFITEGE0FRYXEigZGhBzLBFEJSYnKxwiNUgqIzQ1P/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMABAX/xAAwEQACAgEDAwEGBgIDAAAAAAAAAQIRAxIhMQRBURMUMmFxkbEiQqHB0fCB4SRS8f/aAAwDAQACEQMRAD8A+jFghHonkloJAoJAYwaLACyAJZWSiGMXksEhghAkIYAEhU4jpC5jREkBCWDTGRkbLhZ4DtWJGVM2bi8mZTCUxdI+sc2C5C3YKnYZRM5DJ2GO+4q20wai4vDGc2TIL1FxhsmVZblimzsjCjklOzVp0b4MwUs1wkLNGTGtgORUpC3IVIzkMTCTEbg1INCahyYSYlSDTFaGTHplpikwkxGh0wwkAmEmAYIhSZYAkIQgAm4srJMnOdwSDQtMtMBg0y8gpl5AGyZJkrJZqDZeSFBQMYhTHYFzfkAIDYmbLlLzFWSHSJtgSmKlYBbIzWWl4I55yo6CuK7450bxnej+mJ6htdwmdxmdoudwVjA8od1vmc7U3BX2mG2R1QhRyznZNwcWIUgq2UonZtrkaITMMJDlMSURlI0ymBvEOZSmBRM2aFIOLMykMiwNCWaFIOLERYyLEaHTHphpiYsNMRoomOTLQCYSYg4ZaYCCQBwiFEFMbSslNlZIUdth5LTAyTJqNYzISYlSC3Ao1jckyLyTJqNYzJakKyU5GoNh2WilcF1Mt3IaK7CSkx9lyYidpmlaJnYWjAjKYy+w5t1o22ww3M6IRRzzbHRtDVoXCOEX6jLqitieHY3tipeWerfsbdZ2b1dazsViXV1Sy1/xwm/khnkxKWlyWrxYixZpR1qDcfNGDvgJWGdy+3J+jKciumiSl3CnIzzOxoOz+puWYQxB9J2PbF+3mvVIri3ZzU0Rdk1GVa/NKuTkoLzaazj1EWfHq0alq8WU9ny6Neh6fNf36nGLgysnY4Hwl2tSl0zy9F5lZTjGOqRKMXJ0jnxi8Zwylae2t0FUI4wuh4vjlajJygRw51lb2KZMLxcsrvCKRkrsyh0ZF6JGqMhkZGaLGxkK0KaIsZFiIsbFk2gpj4sYmIixkWTaKpj4hJi0EhGUQ1FoFFoUdBohSIKMackyDkrJE6wskyDkmTC2Hkm4XkvIaNYzcTcBkrJqNqGbinIHIJqNYe4G1JgtgsNAsxXRx0Mk5nQtOZqDogrRzzdC5zM9ki5yEWPky8FuiE3sz2naLUPSaXT6aluuVkWnKDxL4UnLDXRtyXP3OHoO0mpqafeSsj4wtbmn83zXyZ1/xA+KOkmvyuNv3VbX9mePbOfpMcJ4E5JNytvbvbOrrcs8fUNRk4qNJU62pHuJVabiUW68U6uMU2n1/wCWPzx9eq5ezVo+EUaKC1GucZWJ/BUvjSkuiiv3n6vkvuVwnSVaCj9t1S/1pLFdbxujlcor+bHV+C+eThZTxWhr4a9ZSm1jmln7uD8fJ/LPK21ajJ+gnTfjyk+dPl/zv2JRk1KUY+0tWl58NrjVX27Vtx+K9rNRa2oSdNflB/E16y659sG/sTxSydtmntm7ITrlJKxueGsJrn4NN8vQ8dfCUJSrmnGcZOM4vrGS8D0PYBN6tfy1Tk/bp/kjpz4sccElGKSrb78nJ0+bLLqIOUm3f+uDla3Tqq+yrwqtlFZ8Yxk0n9MHb4fxRVrl5HG7Qz3arUNf7ia+k2v0MPfNHVKCyQWrwcmr08ktPFs9Pq+Kufiee4nbueF8wO+YpvLyx8WJR4Jzm5PcusZFiUw4lGKjRFjYsRAdAVisfFjosREbEmzD4jYiYjok2UiGhqFRGImyiCQaBiEhGUQSIREFHGZKyDuLySOmy8kyDkhgBZJkHJEGgB5JkuMAlQ2a0GmLyFgZ3OC9ptRtLFbSpjZmS6Y0VYsnRn1EjmamZq1NpzL7DshE45SFTll4XNt4SXVt+CO/w3sfqLEpW4oh1+Nbp4/p8Pm17HR4dVToNPHWXrfqLUu7j4x3LKivLl1fy9/LcX7QajUt95Y1X4VQzGCXqvH35kPUyZG1ipRW2p7/AEX87HT6WLEk81uTV6Vt9X+y3PoWto0v7NB3y7+nTKMd8ZOTcliHPY+fXmvqBwS7R2xnbTp4V11f+6dday0stp83hLHN+Z5/sDqVZDU6Gz8s4OUF6NbZY+z+o3tdqo6airh1P8ClbJcm4Z8fWTy37epw+k9bw29V+dqq264vsegs60LPS01xW+rhK+a/vkO/t9zfd6fMU3tlK3a5RzyeNvL2yLX4gvx0qftfj/Ad2T7M1SrjqdRHvHZzhCWcRh4Sa/eb9eWMG/jXZGi2DdFcarkm4OPKMn/DKPTD8+q+wW+kjPRo42u3/IsY9bLHrU+d6pfxXyQ/UazS2aZa2VELoYzP/TrnZBLlLO7y8efRZA7OvQtWavSw7tKLjbKe6EYxSUnyb2rlhto8v2D4rstels/8Wo5RjJco2Ywsr+ZcvodjtHCGh0L0lTeb7JqLf5trllt+eFtjn1QJ4NEvRV3Jqt9tPe1xtQ8Oo1wWZ1UU7231dq+dmHifY217rtNbG9WOUsPEJ83nlLOH9jy11MoScLIyhOLxKE01JfJjOG8SuolmiyUHnLw8qX9SfJntNJqaeK1SqtjGvVVw3RlHp/VHxcctZT817noa8uDfJ+LH5WzXzXDR5qx4eodY/wAGTw90++z5TPCMpl2wcZShJYlCUlJeUovDX1RWD0EecUhsQMBoVjIZAdAXBDooUAxDYiojYiMA2I6IqIyJJlUMiMiLiMRNlEMiEgYhoRlEEiFIgowGSZE7i9whcfkmRe4iZqMNLrARbeDUY070go6lHJvsZld8kxliTFeVo9L3kcZbE2auKPPWa6WMZMdmpfmxo9Ou7A+ofZHfu1i8zDdqfU5EtQ/MW7zohjijmnNvk13WmOyQE7hE7SypEnbPfTqjxPRQjXKMdVplhxk+WduHnyUsJp+DWPBngddpraZuu6EoTXWM1h4814Neq5A6bX2UzVtM5V2R6Si+ePJro16Pket0vbam6Cq4np4zj/8AWEVNZ/i2PnF+sW/Y4qngtQWqHNd18uzR33jz05vTkqr7OvPh/H/RPw50ic7dZZyhRXtjJ9FOSzJ/KK/7Du3OiU+64hT8VdsYqbXqvgn81y+Xqeir4Zp/2J0aWxUU6pbq7J7pOSmk2sTabzFYw3nBXBuAzq09mj1E43USz3bUXCUE+bWHnHPmnnkzifUL1Hlvh1T/AOvf4c78nculbxLDWzV6lxqvb41244Fdi+MV20V0NxV1UduxvG6K/LJefLGfJ/I6nG+MV6Wt2WNbsPu68/FZLwSXl5vwPBX9iNWm1FQnFSe2SnGLks8nh9H6Ax7Fa1vLhFN9XK2HP6ZKS6fppT1eqtL3rb+dvoJHqeqjj0+k9S77/av3/wAA9i+FvUamM5c4UPvLH4Nt5jH5tZ9kz0HbeuvUaWOrpe7uJzW5eMHLY/8AtGPPyydPScDnTpHpqJRhdYv9S55/M1zcceS5Lp5k4JwOFNNujsuV3ebnKKSg4RkknhZbS5Ln5i5Opi8nqqXutJLzH8z+F9t+A4+lnHF6Lj7ybb8S/KvLqt9udz5hBOTUYpylJ4jGKblJ+SS6nuezvC1oa7NbrGoS2bY15TlFNp49ZPCwvD+yLu0+i0alXoaN1izFzknBJrwbl8Tw/DkeQ4vxi7Uz3XzcsZ2QXwxgvKMf16ne45eoWnToxvm/ea+C7fc8+LxdO9Sl6mRcV7qfm+9f+/ANZrHZZO2XKVk5TaXRNycmvuBG4zJhpHoaVVHA227fLNtdsWa4VJ80cqCaNun1GCco+ApruaEhkSk93NBpCXYZIZFBxQERkUIwIOI2IEUMihGUQ2IUQEGibKoYg0AgkIx6CRCEAExZJkXuLyIWGpjYiIs0QYQBotorILmZBYFlWTJbpn4NfNGqUhM5jqybo512ml5r5GSdbR1bJGO5jibGCaETkabTNYG2akInMROwbNCZxNbCkheQ4x5N+4MYmyinPIpjW+5LK9nR7j8Qlsp0NC/KoyyvD4IwS/uzyWl1V1WO6ssrx02znFfRM9r20p77T6TUx5pJ7n5d5GOM+XOOPdnltLoLLZbKoSnL+FLPzb6Y9Reia9nWrs3fi7fPbwV6+/anp7pVXNUuK35s9roOIy1+mcarZUa2pJvY8KT8JY8Yy+z+84fdbo6JaniN05WS5Qpc00n4JY5OTx18EvcRw7hdPDo/teqnm9xahCLfLPVJfvPzb5IqyzTcWrUW3Tq6lJxi5btqfXHRTTws9GsfXz5Rhb0r/j3u648pPnT8f6/RjKdR1Ne0U6i5On4bXGr4d/8AG3jOIcZ1F0pznZPEpN93Gc1CC8IxWcYSOv8Ah1bt1biv36pxfyxL/E4vGODajSyxfW1HOI2RzKufs/0eGdv8NtNKeqlbj4Ka3mXhvlhJe+N30PSz6PZZuNaNPbjwv2PM6f1Pa4Kd6778/H9+Nji9p69ur1MV07+bXs5N/qclI6vHtQrdVqJx5xndJxa6OKk0n9EjConVj2hG+aRzZXeSTXl/cqEDRCsUngtagDmDSzdTp8jf2HyMlWox0eP7G6jV+ZNykMoLubNLptqbYmb5lz1eUKjIWKfLDMdFjoiIDYgkKh0RkRURsSbKIYgkDENCMog0EmCixBwiEIAJy9xakI3l7xUVNCkOjZgw7y+8HonZu70GVxjUySmFIDY6dwidouTBGoVsk7BFkhjQuURtINRnmzPI1TiJnE2kFmawzSRqsQnBqDZKazqaWky6eB3NBR0KLZWTe+x3OB8YnRDu5QVlTziLeHHPVLk8r0Nd/aSUY7aKYV+r+LHskkjFVp8ITqa0kcbxYpz1OO/97HSs+eEFGM6S+X35OPxG6dknZbKU5vrKTzy8l5L0RxbbHGSlFuMotOMotxlFrxTXRnV10upxNRLmepjX4Tznu7Z6nh3b6+uPd6iuGojjG5vZNr1aTT+nzJxTt5KVUqdLRHTqaalYpJySa54SSSfrz/U8bKQBzy6TBq1aFf6fTj9DsXWdRp0ubr9frz+o+uZpgc9M2UTLNkNIy9chETeo5RmsoaEsYkGaK2IghsTGNUGaYGODNEJGsVxNURsTPBj4MDMkOQ2IqI2JJjoYg0Ag0IyiDQSBQSEGLRC0QA1nn9xNxn3FqQqKsfuB3CdxFIqiEtjTvKcjO5FbiqiTbHuRW4RuLQ6iI5DtwMpEAkhtIuoXJipDWhc0BoNma0zORotMlgtDo63D1k9Rw3Tnj+EahKSTPpHDqMVxf8Sz8iXUZNMV8Q4oap/Ijqwjj8QnhM72oWInmuKzxFvyRz4PxM6M+0Dz/Ebjj2zG6vUbmZsHrNqKo8+Mb+QISCUS1EkmUoHAyt4LUS1EJjbTYaOTXMwVmqqYrGLnV5ApDn5lqKfQUy3KgOgL2NDYBMPgPgZoj4MAB0RsRcBkRJDIdEOIuIyJNjoOIxAIJCMZBEIiCjnkskyQgpQmS9xQLHixJILJWReSI6Is5pIZkZAUh8CyIMMjQaRGgiiXERabHEz2RAyiMFiMd7N9yOdcxB0Xwqtyuiuizl+x9f09kVVHHRQivsfIeGW7Z5PX1cYar256L7Ec2F5EqKwy+nJ33R6PU6pdDzvaG1d3LHVnMt4089TBxDXOz4SmHptDTEyZ9acaOVW2+Y5RLjDA1IqkLYCQW0tRDUQgAUQ1AYohKIDJgxiHAtRDSAEdDmgOcWFUOdW4Bi4WRa5hRSfQw6nTyTwsnQ4ZpHybFbr5B5JFGiBNTDEmkDEydmaofEbEVAZEVhQ2I2IqIyJNjoag0CgkTY4aIREFGPIEIQBQplFEGQGCyiyF4nPIOJoqIQ6Fwc0h6IQhhURmewhAMdGDUnNuIQBQVR1OzT0LIGAMnBz7+v1ArKIV/KT7jUMRCCDhRCRCGFGRCIQwUEGQgAlxNtHVe6IQSQyNGp/MjbpuhCEH7iLL32YtT+aQCIQeIj5GwHIhBmKhsRkSEJMdDYjEQhNlEEiEIKMf/9k=',
          'questions': [
            {
              "type": "multiple",
              "difficulty": "easy",
              "question":
                  "Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   ",
              "options": [
                "Richard Branson",
                "Alan Sugar",
                "Donald Trump",
                "Bill Gates"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "In 2013 how much money was lost by Nigerian scams?",
              "options": [
                "12.7 Billion",
                "95 Million",
                "956 Million",
                "2.7 Billion"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "What is the unit of currency in Laos?",
              "options": ["Kip", "Ruble", "Konra", "Dollar"]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?",
              "options": [
                "Big Mouth Billy Bass",
                "Big Billy Bass",
                "Singing Fish",
                "Sardeen"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "The Quadrangularis Reversum is best described as which of the following?",
              "options": [
                "A percussion instrument",
                "A building in Oxford University",
                "A chess move",
                "A geometric theorem"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?",
              "options": ["Copper", "Iron", "Nickel", "Silver"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "How many furlongs are there in a mile?",
              "options": ["Eight", "Two", "Four", "Six"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Earth is located in which galaxy?",
              "options": [
                "The Milky Way Galaxy",
                "The Mars Galaxy",
                "The Galaxy Note",
                "The Black Hole"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the full title of the Prime Minister of the UK?",
              "options": [
                "First Lord of the Treasury",
                "Duke of Cambridge",
                "Her Majesty&#039;s Loyal Opposition",
                "Manager of the Crown Estate"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Which country has the union jack in its flag?",
              "options": ["New Zealand", "South Africa", "Canada", "Hong Kong"]
            }
          ]
        },
        {
          'sub_category': 'React Intermediate',
          'image':
              'https://camo.githubusercontent.com/44ef4570e0663cb66576ea1a816223ff22d8493f29ba16ed054fad13d71f1222/68747470733a2f2f696d616765732e6374666173736574732e6e65742f7834776536356271693435712f3739636c5a585a6d745077577a5475783259496c676e2f61373863306635346537653633363932373565616163376530343933333833352f315f485369734c7569664d4f364b624c66504f4b744c6f772e6a706567',
          'questions': [
            {
              "type": "multiple",
              "difficulty": "easy",
              "question":
                  "Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   ",
              "options": [
                "Richard Branson",
                "Alan Sugar",
                "Donald Trump",
                "Bill Gates"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "In 2013 how much money was lost by Nigerian scams?",
              "options": [
                "12.7 Billion",
                "95 Million",
                "956 Million",
                "2.7 Billion"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "What is the unit of currency in Laos?",
              "options": ["Kip", "Ruble", "Konra", "Dollar"]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?",
              "options": [
                "Big Mouth Billy Bass",
                "Big Billy Bass",
                "Singing Fish",
                "Sardeen"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "The Quadrangularis Reversum is best described as which of the following?",
              "options": [
                "A percussion instrument",
                "A building in Oxford University",
                "A chess move",
                "A geometric theorem"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?",
              "options": ["Copper", "Iron", "Nickel", "Silver"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "How many furlongs are there in a mile?",
              "options": ["Eight", "Two", "Four", "Six"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Earth is located in which galaxy?",
              "options": [
                "The Milky Way Galaxy",
                "The Mars Galaxy",
                "The Galaxy Note",
                "The Black Hole"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the full title of the Prime Minister of the UK?",
              "options": [
                "First Lord of the Treasury",
                "Duke of Cambridge",
                "Her Majesty&#039;s Loyal Opposition",
                "Manager of the Crown Estate"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Which country has the union jack in its flag?",
              "options": ["New Zealand", "South Africa", "Canada", "Hong Kong"]
            }
          ]
        },
        {
          'sub_category': 'React Beginning',
          'image':
              'data:image/jpeg;base64,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',
          'questions': [
            {
              "type": "multiple",
              "difficulty": "easy",
              "question":
                  "Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   ",
              "options": [
                "Richard Branson",
                "Alan Sugar",
                "Donald Trump",
                "Bill Gates"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "In 2013 how much money was lost by Nigerian scams?",
              "options": [
                "12.7 Billion",
                "95 Million",
                "956 Million",
                "2.7 Billion"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "What is the unit of currency in Laos?",
              "options": ["Kip", "Ruble", "Konra", "Dollar"]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?",
              "options": [
                "Big Mouth Billy Bass",
                "Big Billy Bass",
                "Singing Fish",
                "Sardeen"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "The Quadrangularis Reversum is best described as which of the following?",
              "options": [
                "A percussion instrument",
                "A building in Oxford University",
                "A chess move",
                "A geometric theorem"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?",
              "options": ["Copper", "Iron", "Nickel", "Silver"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "How many furlongs are there in a mile?",
              "options": ["Eight", "Two", "Four", "Six"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Earth is located in which galaxy?",
              "options": [
                "The Milky Way Galaxy",
                "The Mars Galaxy",
                "The Galaxy Note",
                "The Black Hole"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the full title of the Prime Minister of the UK?",
              "options": [
                "First Lord of the Treasury",
                "Duke of Cambridge",
                "Her Majesty&#039;s Loyal Opposition",
                "Manager of the Crown Estate"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Which country has the union jack in its flag?",
              "options": ["New Zealand", "South Africa", "Canada", "Hong Kong"]
            }
          ]
        },
        {
          'sub_category': 'React Intermediate',
          'image':
              'https://camo.githubusercontent.com/44ef4570e0663cb66576ea1a816223ff22d8493f29ba16ed054fad13d71f1222/68747470733a2f2f696d616765732e6374666173736574732e6e65742f7834776536356271693435712f3739636c5a585a6d745077577a5475783259496c676e2f61373863306635346537653633363932373565616163376530343933333833352f315f485369734c7569664d4f364b624c66504f4b744c6f772e6a706567',
          'questions': [
            {
              "type": "multiple",
              "difficulty": "easy",
              "question":
                  "Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   ",
              "options": [
                "Richard Branson",
                "Alan Sugar",
                "Donald Trump",
                "Bill Gates"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "In 2013 how much money was lost by Nigerian scams?",
              "options": [
                "12.7 Billion",
                "95 Million",
                "956 Million",
                "2.7 Billion"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "What is the unit of currency in Laos?",
              "options": ["Kip", "Ruble", "Konra", "Dollar"]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?",
              "options": [
                "Big Mouth Billy Bass",
                "Big Billy Bass",
                "Singing Fish",
                "Sardeen"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "The Quadrangularis Reversum is best described as which of the following?",
              "options": [
                "A percussion instrument",
                "A building in Oxford University",
                "A chess move",
                "A geometric theorem"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?",
              "options": ["Copper", "Iron", "Nickel", "Silver"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "How many furlongs are there in a mile?",
              "options": ["Eight", "Two", "Four", "Six"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Earth is located in which galaxy?",
              "options": [
                "The Milky Way Galaxy",
                "The Mars Galaxy",
                "The Galaxy Note",
                "The Black Hole"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the full title of the Prime Minister of the UK?",
              "options": [
                "First Lord of the Treasury",
                "Duke of Cambridge",
                "Her Majesty&#039;s Loyal Opposition",
                "Manager of the Crown Estate"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Which country has the union jack in its flag?",
              "options": ["New Zealand", "South Africa", "Canada", "Hong Kong"]
            }
          ]
        }
      ]
    },
    {
      'category_type': 'Entertainment',
      'quizes': [
        {
          'sub_category': 'Movies',
          'image':
              'https://indianfolk.com/wp-content/uploads/2018/10/Movie.jpg',
          'questions': [
            {
              "type": "multiple",
              "difficulty": "easy",
              "question":
                  "Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   ",
              "options": [
                "Richard Branson",
                "Alan Sugar",
                "Donald Trump",
                "Bill Gates"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "In 2013 how much money was lost by Nigerian scams?",
              "options": [
                "12.7 Billion",
                "95 Million",
                "956 Million",
                "2.7 Billion"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "What is the unit of currency in Laos?",
              "options": ["Kip", "Ruble", "Konra", "Dollar"]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?",
              "options": [
                "Big Mouth Billy Bass",
                "Big Billy Bass",
                "Singing Fish",
                "Sardeen"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "The Quadrangularis Reversum is best described as which of the following?",
              "options": [
                "A percussion instrument",
                "A building in Oxford University",
                "A chess move",
                "A geometric theorem"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?",
              "options": ["Copper", "Iron", "Nickel", "Silver"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "How many furlongs are there in a mile?",
              "options": ["Eight", "Two", "Four", "Six"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Earth is located in which galaxy?",
              "options": [
                "The Milky Way Galaxy",
                "The Mars Galaxy",
                "The Galaxy Note",
                "The Black Hole"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the full title of the Prime Minister of the UK?",
              "options": [
                "First Lord of the Treasury",
                "Duke of Cambridge",
                "Her Majesty&#039;s Loyal Opposition",
                "Manager of the Crown Estate"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Which country has the union jack in its flag?",
              "options": ["New Zealand", "South Africa", "Canada", "Hong Kong"]
            }
          ]
        },
        {
          'sub_category': 'Books',
          'image':
              'https://images.idgesg.net/images/article/2020/07/stack_of_books_one_open_scattering_flying_letters_language_reading_education_dictionary_by_domin_domin_gettyimages-157719194_abstract_binary_by_aleksei_derin_gettyimages-914850254_cso_2400x1600-100853104-large.jpg?auto=webp&quality=85,70',
          'questions': [
            {
              "type": "multiple",
              "difficulty": "easy",
              "question":
                  "Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   ",
              "options": [
                "Richard Branson",
                "Alan Sugar",
                "Donald Trump",
                "Bill Gates"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "In 2013 how much money was lost by Nigerian scams?",
              "options": [
                "12.7 Billion",
                "95 Million",
                "956 Million",
                "2.7 Billion"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question": "What is the unit of currency in Laos?",
              "options": ["Kip", "Ruble", "Konra", "Dollar"]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the name of the popular animatronic singing fish prop, singing such hits such as &quot;Don&#039;t Worry, Be Happy&quot;?",
              "options": [
                "Big Mouth Billy Bass",
                "Big Billy Bass",
                "Singing Fish",
                "Sardeen"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "The Quadrangularis Reversum is best described as which of the following?",
              "options": [
                "A percussion instrument",
                "A building in Oxford University",
                "A chess move",
                "A geometric theorem"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "hard",
              "question":
                  "Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?",
              "options": ["Copper", "Iron", "Nickel", "Silver"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "How many furlongs are there in a mile?",
              "options": ["Eight", "Two", "Four", "Six"]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Earth is located in which galaxy?",
              "options": [
                "The Milky Way Galaxy",
                "The Mars Galaxy",
                "The Galaxy Note",
                "The Black Hole"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "medium",
              "question":
                  "What is the full title of the Prime Minister of the UK?",
              "options": [
                "First Lord of the Treasury",
                "Duke of Cambridge",
                "Her Majesty&#039;s Loyal Opposition",
                "Manager of the Crown Estate"
              ]
            },
            {
              "type": "multiple",
              "difficulty": "easy",
              "question": "Which country has the union jack in its flag?",
              "options": ["New Zealand", "South Africa", "Canada", "Hong Kong"]
            }
          ]
        }
      ]
    }
  ]
};

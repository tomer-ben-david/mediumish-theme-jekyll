---
title: Byzantine Fault Tolerance in Bitcoin Pitchme
permalink: byzantine-fault-tolerance-in-bitcoin-pitchme
date: 2017-12-04 12:00:00
published: false
---
@title[Introduction]
## Byzantine fault tolerance and Bitcoin

---
##### <span style="font-family:Helvetica Neue; font-weight:bold">a system which<span style="color:#e49436"> tolerates</span> a class of failures known as <span style="color:#e49436">Byzantine General Problem</span></span>

![byzantine problem](https://blog.cdemi.io/content/images/2017/06/byzantine-generals-problem-min.png)

---
Leslie Lamport, Robert Shostak and Marshall Pease described in an academic paper published in 1982

---
## Also known as

- Interactive consistency
- Source congruency |
- Error avalanche |
- Byzantine agreement problem  |
- Byzantine generals problem |
- Byzantine failure |
---

## The failure

- Failed node - generate arbitrary data
- Confuse failure detection systems |
- Loss of a system service due to a Byzantine fault in systems that require consensus |

---
## Traitor Commander
![The Commander Traitor](https://blog.cdemi.io/content/images/2017/06/The-Traitorous-General.png)

---
## Traitor Messenger
![Traitor Messenger](https://blog.cdemi.io/content/images/2017/06/The-Traitorous-Messenger.png)

---
The ninth general (traitorous general)

![nignth general](https://cdn-images-1.medium.com/max/800/0*-xCD-El4LZ48dji1.png)
---
Processess that are deliberately trying to mislead us!

---
Byzantine correct - majority should be healthy

---
## In Practice

### Satoshis Bitcoin Byzantine Solution

---
<img src="https://lh3.googleusercontent.com/V1V47m4gKQjKLsEG6HGJRJZsczlQQTUwEjnaHBXlINow7ThRmivZM9KV7NkrdA89JVitYZ-Q2bCgjiWfDgV_th5ZvjhjxQkN1KSXX17ReiQHhsuehdmCinI0OXWi1E_XuY5Sgk_W543LQaI61WVRCoSb8CEC2uzwvXuWbPBLFXmPzXykSSwcwu1ST-yxOmTzKtt353ocx9x0JUupBkhW2XlY-msZ_ynIfZoZcaN0uSznZ-gnU0spStTEr_INTUfEgFOGDVIKi0IAEdym88p0ZUY4FmURmWKzsIqNX66sO1YuIKP5lL6PGWMWkMk7SlxWS3j52VO979BEWYi4SZ6u3LK2bTvP634MerNitA3BoTwYAQvKaDvZFGsM6aNz8VP6FJxvlny9u2s73olgGbfQJ9x6dg7VlLD2oY8NH4vX0ciH97ccG0tb48RUiVJPkkmKJXga6XqesNkbzSysYuKLFmNWY39HbdNXNc6dPY9kNRvphX9CdQiHhmotBV-439p85OPAtECowJ8H_9NHMnQmcXn9NMcmCRHZueokkTx3pB0EfPHRLeWLszIXg7ldliWp4jGN1ng0qqCT4MRi38Xs7lUNzlwBfN8GBJ_TTWt1K9c=w1232-h996-no" height=500/>

---
<img src="https://lh3.googleusercontent.com/Uog6Qof53ORVonWQq5fJ85qsWgw1vqGZmKikz4AXTS1eyxF23OVQCv4NyENtFB21qniLUV_dUGJtX8lu1M9--X3YmkAiYe0OC-MpuV01nYVo5w2RZzlNpY-HSHd62vkjAmzV0rRbK_-GOu1GjbGAR-T_ab0yeO5HpBF3VeEV6hQ6ac_Tyayo2Vvh2r0DQU2X9fz83d-Z1RP-dMynoFMi0CxUrr7vNHa7OtWFzlRY1Jyq6JbKxPBWu8fD5LbWbWm-YIpitqR6pixSEZ00wiG3nq-gdHeds6OzExqwsQ9XD7bAX75Oc7GbI__am4GQZx4Ig4AoXWkzvL4Yzfof7Z2m7LzGM9XwI0eLsukwHX4nOaKMITaQFk0v7Li2xdrFTwsZIBVTtdT1muEXoWlM83FYhDL_-SBYg9S22xRi90WU_StNNyX5EfxXZTE4xT0ix86pt3mkNMiYQmtMtkOboHhDWns5cu7Kw1jrTekjh1WhiJtb93HWhd4aJ_6mZ4vIdBOADwCxIkLOIQYoTdcMJAJRQYKw1S4g9p0Fn-NFBmrPVceim6ohX_UZ5mrAaSgW3Dw_EMH9F4BaEAkz6lLKZT-4B37gBM6kPOApSsGDZO3O2_k=w1226-h910-no" height=500/>

---
### Bitcoin

- Number of general's want to attack - we need majority to win. |
- Each sends attack time. |
- Received time, do "Global" 10 minutes calculation. |
- One general will come up with solution |
- This general with solution sends to all other |

---
### Bitcoin

- All Other reset add solution block and restart their calc |
- They always prefer longest chain |
- After 2 hours one attack time should have 12 POW |
- 12 POW in 2 Hours we know difficulty => we know #computers involved |
- They all agree on first time. |

---
## Resources

- https://blog.cdemi.io/byzantine-fault-tolerance/ 
 
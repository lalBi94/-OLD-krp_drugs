## _Functions `client/`_<br/>
```
drp_drug(drug, action)
```
**Arguments** :<br/>
> **drug = Config.nameOfYourDrug**  _(STRING)_
> **action = {"recolt", "treatment", "sell"}** _(STRING)_

**Info :** Function that manages the client/server connection
<br/><br/>

```
remove(anim)
```
**Argument** :<br/>
> **anim = Config.anim.{"recolt", "treatment", "sell"}.animation**  _(STRING)_

**Info :** Function that stops an animation

<br/>

## _Triggers `server/`_
**There are 3 different triggers per drug:**

```
RegisterNetEvent("Zod#8682::recoltYourDrug")
```
> Manage the action when the player collecting drugs

<br/>

```
RegisterNetEvent("Zod#8682::treatYourDrug")
```
> Manage the action when the player transforming drugs

<br/>

```
RegisterNetEvent("Zod#8682::selltYourDrug")
```
> Manage the action when the player selling drugs

<br/>

## _Credits_
> **Owner : Zod#8682** <br/>
> **You can contact me on discord at any time**
.class public abstract Lc8/ibo;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field protected volatile FULL_SCREEN_HEIGHT:I

.field protected volatile FULL_SCREEN_WIDTH:I

.field protected currentFragment:Lc8/obo;

.field public fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 32
    const/16 v0, 0x400

    iput v0, p0, Lc8/ibo;->FULL_SCREEN_WIDTH:I

    .line 36
    const/16 v0, 0x300

    iput v0, p0, Lc8/ibo;->FULL_SCREEN_HEIGHT:I

    return-void
.end method

.method private setArguments(Lc8/obo;Ljava/util/Map;)V
    .locals 6
    .param p1, "fragment"    # Lc8/obo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/obo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 166
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [I

    if-eqz v3, :cond_4

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 171
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 173
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [J

    if-eqz v3, :cond_6

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 175
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Byte;

    if-eqz v3, :cond_7

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 177
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Short;

    if-eqz v3, :cond_8

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 179
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    invoke-virtual {p1, v0}, Lc8/obo;->setArguments(Landroid/os/Bundle;)V

    .line 187
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_b
    return-void
.end method


# virtual methods
.method _initConfiguration()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lc8/ibo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lc8/ibo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lc8/ibo;->FULL_SCREEN_WIDTH:I

    .line 65
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lc8/ibo;->FULL_SCREEN_HEIGHT:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bbe\u5907\u5bc6\u5ea6dm.densityDpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FULL_SCREEN_WIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/ibo;->FULL_SCREEN_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FULL_SCREEN_HEIGHT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/ibo;->FULL_SCREEN_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/Oao;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public changeFragment(Lc8/obo;)V
    .locals 1
    .param p1, "f"    # Lc8/obo;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/ibo;->changeFragment(Lc8/obo;Z)V

    .line 99
    return-void
.end method

.method public changeFragment(Lc8/obo;Ljava/util/Map;)V
    .locals 1
    .param p1, "f"    # Lc8/obo;
    .param p2, "params"    # Ljava/util/Map;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/ibo;->changeFragment(Lc8/obo;Ljava/util/Map;Z)V

    .line 119
    return-void
.end method

.method public changeFragment(Lc8/obo;Ljava/util/Map;IZ)V
    .locals 2
    .param p1, "f"    # Lc8/obo;
    .param p2, "params"    # Ljava/util/Map;
    .param p3, "containerId"    # I
    .param p4, "init"    # Z

    .prologue
    .line 140
    iget-object v1, p0, Lc8/ibo;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 141
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0, p1, p2}, Lc8/ibo;->setArguments(Lc8/obo;Ljava/util/Map;)V

    .line 142
    invoke-virtual {v0, p3, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    if-nez p4, :cond_1

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    :cond_0
    :goto_0
    iput-object p1, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    .line 149
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 150
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    if-eq v1, p1, :cond_0

    .line 146
    iget-object v1, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    invoke-virtual {p0, v1}, Lc8/ibo;->removeFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public changeFragment(Lc8/obo;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "f"    # Lc8/obo;
    .param p2, "params"    # Ljava/util/Map;
    .param p3, "init"    # Z

    .prologue
    .line 129
    const v0, 0x1020002

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/ibo;->changeFragment(Lc8/obo;Ljava/util/Map;IZ)V

    .line 130
    return-void
.end method

.method public changeFragment(Lc8/obo;Z)V
    .locals 1
    .param p1, "f"    # Lc8/obo;
    .param p2, "init"    # Z

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lc8/ibo;->changeFragment(Lc8/obo;Ljava/util/Map;Z)V

    .line 109
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 247
    const-string/jumbo v0, "finish"

    invoke-virtual {p0, v0}, Lc8/ibo;->printf(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public getCurrentFragment()Lc8/obo;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    return-object v0
.end method

.method public initFragment(Lc8/obo;)V
    .locals 1
    .param p1, "f"    # Lc8/obo;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/ibo;->changeFragment(Lc8/obo;Z)V

    .line 81
    return-void
.end method

.method public initFragment(Lc8/obo;Ljava/util/Map;)V
    .locals 1
    .param p1, "f"    # Lc8/obo;
    .param p2, "params"    # Ljava/util/Map;

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc8/ibo;->changeFragment(Lc8/obo;Ljava/util/Map;Z)V

    .line 90
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    invoke-virtual {v0}, Lc8/obo;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string/jumbo v0, "onCreate"

    invoke-virtual {p0, v0}, Lc8/ibo;->printf(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lc8/ibo;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lc8/ibo;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 54
    invoke-virtual {p0}, Lc8/ibo;->_initConfiguration()V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 253
    const-string/jumbo v0, "onDestroy"

    invoke-virtual {p0, v0}, Lc8/ibo;->printf(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 235
    const-string/jumbo v0, "onPause"

    invoke-virtual {p0, v0}, Lc8/ibo;->printf(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 229
    const-string/jumbo v0, "onResume"

    invoke-virtual {p0, v0}, Lc8/ibo;->printf(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 241
    const-string/jumbo v0, "onStop"

    invoke-virtual {p0, v0}, Lc8/ibo;->printf(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public printf(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@_@---| "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " |---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 265
    :cond_0
    return-void
.end method

.method protected removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 193
    iget-object v1, p0, Lc8/ibo;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 194
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 196
    return-void
.end method

.method public setCurrentFragment(Lc8/obo;)V
    .locals 0
    .param p1, "currentFragment"    # Lc8/obo;

    .prologue
    .line 277
    iput-object p1, p0, Lc8/ibo;->currentFragment:Lc8/obo;

    .line 278
    return-void
.end method

.method public setFullscreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/ibo;->requestWindowFeature(I)Z

    .line 203
    invoke-virtual {p0}, Lc8/ibo;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 204
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

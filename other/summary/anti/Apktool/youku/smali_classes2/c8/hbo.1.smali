.class public abstract Lc8/hbo;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field protected static FULL_SCREEN_FLAG:Z = false

.field protected static volatile FULL_SCREEN_HEIGHT:I = 0x0

.field protected static volatile FULL_SCREEN_WIDTH:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BASE"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x400

    sput v0, Lc8/hbo;->FULL_SCREEN_WIDTH:I

    .line 30
    const/16 v0, 0x300

    sput v0, Lc8/hbo;->FULL_SCREEN_HEIGHT:I

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lc8/hbo;->FULL_SCREEN_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initConfiguration()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lc8/hbo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 60
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lc8/hbo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lc8/hbo;->FULL_SCREEN_WIDTH:I

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lc8/hbo;->FULL_SCREEN_HEIGHT:I

    .line 63
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

    sget v2, Lc8/hbo;->FULL_SCREEN_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FULL_SCREEN_HEIGHT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lc8/hbo;->FULL_SCREEN_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/Oao;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    sput-boolean v1, Lc8/hbo;->FULL_SCREEN_FLAG:Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 113
    const-string/jumbo v0, "finish"

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lc8/hbo;->initConfiguration()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/hbo;->requestWindowFeature(I)Z

    .line 44
    iput-object p0, p0, Lc8/hbo;->context:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lc8/hbo;->initConfiguration()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    const-string/jumbo v0, "onDestroy"

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    const-string/jumbo v0, "onPause"

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    const-string/jumbo v0, "onResume"

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 97
    const-string/jumbo v0, "onStop"

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 101
    :cond_0
    return-void
.end method

.method public printf(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--| "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " |--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public setFullscreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/hbo;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lc8/hbo;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 78
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/hbo;->printf(Ljava/lang/String;)V

    .line 136
    return-void
.end method

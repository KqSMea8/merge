.class public Lc8/npb;
.super Lc8/Kbg;
.source "AliWXImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mpb;
    }
.end annotation


# static fields
.field public static final CONFIG_GROUP:Ljava/lang/String; = "AliWXImage"

.field private static findMethod:Z

.field private static method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lc8/npb;->findMethod:Z

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lc8/npb;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lc8/Kbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 34
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getConfigEnableBitmapAutoManage()Z
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0}, Lc8/npb;->isBlackHC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 75
    :goto_0
    return v1

    .line 66
    :cond_0
    const-string/jumbo v1, "true"

    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    const-string/jumbo v3, "AliWXImage"

    const-string/jumbo v4, "globalEnableBitmapAutoManage"

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v3, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 67
    .local v0, "globalEnableBitmapAutoManage":Z
    if-eqz v0, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lc8/npb;->isMainHC()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string/jumbo v1, "true"

    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    const-string/jumbo v3, "AliWXImage"

    const-string/jumbo v4, "hcEnableBitmapAutoManage"

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v3, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 75
    :cond_2
    const-string/jumbo v1, "true"

    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    const-string/jumbo v3, "AliWXImage"

    const-string/jumbo v4, "normalEnableBitmapAutoManage"

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v3, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lc8/npb;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    new-instance v0, Lc8/opb;

    invoke-direct {v0, p1}, Lc8/opb;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "view":Lc8/opb;
    invoke-direct {p0}, Lc8/npb;->getConfigEnableBitmapAutoManage()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/npb;->reflectionSetEnableBitmapAutoManage(Lc8/opb;Z)V

    .line 40
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lc8/opb;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/opb;->setCropToPadding(Z)V

    .line 44
    :cond_0
    invoke-virtual {v0, p0}, Lc8/opb;->holdComponent(Lc8/Kbg;)V

    .line 46
    return-object v0
.end method

.method public isBlackHC()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-virtual {p0}, Lc8/npb;->getInstance()Lc8/nVf;

    move-result-object v7

    if-nez v7, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v6

    .line 127
    :cond_1
    invoke-virtual {p0}, Lc8/npb;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "mWeexUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    :try_start_0
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v7

    invoke-virtual {v7}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 133
    .local v0, "configAdapter":Lc8/Hob;
    const-string/jumbo v7, "AliWXImage"

    const-string/jumbo v8, "black_domain"

    const-string/jumbo v9, ""

    invoke-interface {v0, v7, v8, v9}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 135
    const-string/jumbo v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "domains":[Ljava/lang/String;
    array-length v8, v2

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v2, v7

    .line 137
    .local v5, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 138
    const/4 v6, 0x1

    goto :goto_0

    .line 136
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 142
    .end local v0    # "configAdapter":Lc8/Hob;
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "domains":[Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isMainHC()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-virtual {p0}, Lc8/npb;->getInstance()Lc8/nVf;

    move-result-object v7

    if-nez v7, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v6

    .line 102
    :cond_1
    invoke-virtual {p0}, Lc8/npb;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "mWeexUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v7

    invoke-virtual {v7}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 108
    .local v0, "configAdapter":Lc8/Hob;
    const-string/jumbo v7, "AliWXImage"

    const-string/jumbo v8, "hc_domain"

    const-string/jumbo v9, ""

    invoke-interface {v0, v7, v8, v9}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    const-string/jumbo v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "domains":[Ljava/lang/String;
    array-length v8, v2

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v2, v7

    .line 112
    .local v5, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 113
    const/4 v6, 0x1

    goto :goto_0

    .line 111
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "configAdapter":Lc8/Hob;
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "domains":[Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reflectionSetEnableBitmapAutoManage(Lc8/opb;Z)V
    .locals 5
    .param p1, "view"    # Lc8/opb;
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x1

    .line 80
    sget-boolean v0, Lc8/npb;->findMethod:Z

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lc8/npb;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    sget-object v0, Lc8/npb;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lc8/npb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sput-boolean v1, Lc8/npb;->findMethod:Z

    .line 89
    :try_start_1
    const-class v0, Lc8/teg;

    const-string/jumbo v1, "setEnableBitmapAutoManage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    sput-object v0, Lc8/npb;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lc8/npb;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    goto :goto_0
.end method

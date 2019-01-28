.class public Lc8/Adn;
.super Ljava/lang/Object;
.source "DebugCenter.java"

# interfaces
.implements Lc8/Cdn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zdn;
    }
.end annotation


# static fields
.field public static final DEBUG_CENTER:Ljava/lang/String; = "debug_center"


# instance fields
.field private serviceDispatcher:Lc8/Ddn;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lc8/Ddn;

    invoke-direct {v0}, Lc8/Ddn;-><init>()V

    iput-object v0, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lc8/ydn;)V
    .locals 0
    .param p1, "x0"    # Lc8/ydn;

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/Adn;-><init>()V

    return-void
.end method

.method private accept(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v2, "ykdebug"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accept uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private executeImpl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    new-instance v0, Lc8/Ddn;

    invoke-direct {v0}, Lc8/Ddn;-><init>()V

    iput-object v0, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    .line 67
    iget-object v0, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    const-string/jumbo v1, "play_service"

    new-instance v2, Lc8/Gdn;

    invoke-direct {v2, p1}, Lc8/Gdn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lc8/Ddn;->register(Ljava/lang/String;Lc8/Fdn;)V

    .line 68
    iget-object v0, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    invoke-virtual {v0, p2}, Lc8/Ddn;->dispatch(Landroid/net/Uri;)V

    .line 69
    return-void
.end method

.method public static getInstance()Lc8/Adn;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lc8/zdn;->INSTANCE:Lc8/Adn;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    :try_start_0
    invoke-direct {p0, p2}, Lc8/Adn;->accept(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lc8/Adn;->executeImpl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37
    iget-object v1, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    invoke-virtual {v1}, Lc8/Ddn;->isHandle()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDebug(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    const-string/jumbo v2, "common_service"

    invoke-virtual {v1, v2}, Lc8/Ddn;->getService(Ljava/lang/String;)Lc8/Fdn;

    move-result-object v1

    check-cast v1, Lc8/Edn;

    invoke-virtual {v1, p1}, Lc8/Edn;->getDebug(I)I

    move-result v0

    .line 74
    .local v0, "debug":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Common service get mtop_debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    return v0
.end method

.method public getDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    const-string/jumbo v2, "common_service"

    invoke-virtual {v1, v2}, Lc8/Ddn;->getService(Ljava/lang/String;)Lc8/Fdn;

    move-result-object v1

    check-cast v1, Lc8/Edn;

    invoke-virtual {v1, p1}, Lc8/Edn;->getDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "device":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Common service get mtop_device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    return-object v0
.end method

.method public isDebugPre()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Adn;->serviceDispatcher:Lc8/Ddn;

    const-string/jumbo v1, "common_service"

    invoke-virtual {v0, v1}, Lc8/Ddn;->getService(Ljava/lang/String;)Lc8/Fdn;

    move-result-object v0

    check-cast v0, Lc8/Edn;

    invoke-virtual {v0}, Lc8/Edn;->isDebugPre()Z

    move-result v0

    return v0
.end method

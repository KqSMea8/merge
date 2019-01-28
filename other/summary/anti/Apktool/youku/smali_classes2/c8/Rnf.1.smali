.class public Lc8/Rnf;
.super Ljava/lang/Object;
.source "PushConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Nnf;,
        Lc8/Qnf;,
        Lc8/Onf;,
        Lc8/Pnf;
    }
.end annotation


# instance fields
.field public pushConfigCenter:Lc8/Onf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lc8/Nnf;)V
    .locals 0
    .param p1, "x0"    # Lc8/Nnf;

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/Rnf;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/Rnf;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/Pnf;->instance:Lc8/Rnf;

    return-object v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    if-nez v0, :cond_0

    .line 62
    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    invoke-interface {v0, p1, p2, p3}, Lc8/Onf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    invoke-interface {v0, p1}, Lc8/Onf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public registerListener([Ljava/lang/String;Lc8/Qnf;)V
    .locals 1
    .param p1, "groupnames"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/Qnf;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    invoke-interface {v0, p1, p2}, Lc8/Onf;->registerListener([Ljava/lang/String;Lc8/Qnf;)V

    goto :goto_0
.end method

.method public unregisterListener([Ljava/lang/String;)V
    .locals 1
    .param p1, "groupnames"    # [Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lc8/Rnf;->pushConfigCenter:Lc8/Onf;

    invoke-interface {v0, p1}, Lc8/Onf;->unregisterListener([Ljava/lang/String;)V

    goto :goto_0
.end method

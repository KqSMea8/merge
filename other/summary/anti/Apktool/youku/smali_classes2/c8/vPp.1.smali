.class public Lc8/vPp;
.super Ljava/lang/Object;
.source "XcmdEventMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tPp;,
        Lc8/uPp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XcmdEventMgr"

.field static oxcmdListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/sPp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lc8/vPp;->oxcmdListeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lc8/tPp;)V
    .locals 0
    .param p1, "x0"    # Lc8/tPp;

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/vPp;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/vPp;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/uPp;->xm:Lc8/vPp;

    return-object v0
.end method


# virtual methods
.method public addOrangeXcmdListener(Lc8/sPp;)V
    .locals 1
    .param p1, "oXcmdlistener"    # Lc8/sPp;

    .prologue
    .line 38
    sget-object v0, Lc8/vPp;->oxcmdListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public onOrangeEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance v1, Lc8/rPp;

    invoke-direct {v1, p1}, Lc8/rPp;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "oxcmdEvent":Lc8/rPp;
    sget-object v3, Lc8/vPp;->oxcmdListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sPp;

    .line 55
    .local v2, "oxcmdListener":Lc8/sPp;
    :try_start_0
    invoke-interface {v2, v1}, Lc8/sPp;->onEvent(Lc8/rPp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public removeOrangeXcmdListener(Lc8/sPp;)V
    .locals 1
    .param p1, "oXcmdlistener"    # Lc8/sPp;

    .prologue
    .line 43
    sget-object v0, Lc8/vPp;->oxcmdListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.class public Lc8/pWc;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# static fields
.field private static sInstance:Lc8/pWc;


# instance fields
.field private final mOrangeChannel:Lc8/sWc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lc8/pWc;

    invoke-direct {v0}, Lc8/pWc;-><init>()V

    sput-object v0, Lc8/pWc;->sInstance:Lc8/pWc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lc8/sWc;

    invoke-direct {v0}, Lc8/sWc;-><init>()V

    iput-object v0, p0, Lc8/pWc;->mOrangeChannel:Lc8/sWc;

    return-void
.end method

.method public static getInstance()Lc8/pWc;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lc8/pWc;->sInstance:Lc8/pWc;

    return-object v0
.end method


# virtual methods
.method public getLastMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/pWc;->mOrangeChannel:Lc8/sWc;

    invoke-virtual {v0, p1}, Lc8/sWc;->getLastMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerMessageHandler(Ljava/lang/String;Lc8/qWc;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/qWc;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/pWc;->mOrangeChannel:Lc8/sWc;

    invoke-virtual {v0, p1, p2}, Lc8/sWc;->registerMessageHandler(Ljava/lang/String;Lc8/qWc;)V

    .line 22
    return-void
.end method

.method public unregisterMessageHandler(Ljava/lang/String;Lc8/qWc;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/qWc;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/pWc;->mOrangeChannel:Lc8/sWc;

    invoke-virtual {v0, p1, p2}, Lc8/sWc;->unregisterMessageHandler(Ljava/lang/String;Lc8/qWc;)V

    .line 26
    return-void
.end method

.class public Lc8/Lag;
.super Ljava/lang/Object;
.source "WXAnimationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHolder"
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private wxAnimationBean:Lc8/Kag;


# direct methods
.method public constructor <init>(Lc8/Kag;Ljava/lang/String;)V
    .locals 0
    .param p1, "wxAnimationBean"    # Lc8/Kag;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lc8/Lag;->wxAnimationBean:Lc8/Kag;

    .line 63
    iput-object p2, p0, Lc8/Lag;->callback:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public execute(Lc8/nVf;Lc8/tbg;)V
    .locals 4
    .param p1, "mInstance"    # Lc8/nVf;
    .param p2, "component"    # Lc8/tbg;

    .prologue
    .line 57
    invoke-virtual {p2}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/Lag;->wxAnimationBean:Lc8/Kag;

    iget-object v3, p0, Lc8/Lag;->callback:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/YYf;->getAnimationAction(Ljava/lang/String;Lc8/Kag;Ljava/lang/String;)Lc8/rYf;

    move-result-object v0

    .line 58
    .local v0, "action":Lc8/rYf;
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v1

    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lc8/Cag;->runOnThread(Ljava/lang/String;Lc8/rYf;)V

    .line 59
    return-void
.end method

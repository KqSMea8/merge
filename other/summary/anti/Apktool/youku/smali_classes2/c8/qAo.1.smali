.class public Lc8/qAo;
.super Ljava/lang/Object;
.source "VipPayAPI.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rAo;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rAo;


# direct methods
.method constructor <init>(Lc8/rAo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rAo;

    .prologue
    .line 257
    iput-object p1, p0, Lc8/qAo;->this$0:Lc8/rAo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-static {v0}, Lc8/uAo;->access$002(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 261
    invoke-static {v0}, Lc8/uAo;->access$102(Lc8/dAo;)Lc8/dAo;

    .line 262
    return-void
.end method

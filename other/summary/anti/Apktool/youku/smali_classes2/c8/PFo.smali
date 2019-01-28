.class public Lc8/PFo;
.super Ljava/lang/Object;
.source "VipAbstractAppContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QFo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QFo;


# direct methods
.method constructor <init>(Lc8/QFo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/QFo;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/PFo;->this$0:Lc8/QFo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lc8/PFo;->this$0:Lc8/QFo;

    invoke-virtual {v0}, Lc8/QFo;->asyncInit()V

    .line 62
    iget-object v0, p0, Lc8/PFo;->this$0:Lc8/QFo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/QFo;->initializeComplete:Z

    .line 63
    invoke-static {}, Lc8/QFo;->access$000()Lc8/VFo;

    move-result-object v0

    const-string/jumbo v1, "ACTION_APP_INITIALIZE_COMPLETE"

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

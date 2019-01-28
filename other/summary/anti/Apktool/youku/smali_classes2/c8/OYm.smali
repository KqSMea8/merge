.class public Lc8/OYm;
.super Ljava/lang/Object;
.source "PoplayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initPopRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;


# direct methods
.method public constructor <init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/poplayer/ui/activity/PoplayerActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 175
    iput-object p1, p0, Lc8/OYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v0

    iget-object v1, p0, Lc8/OYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-static {v1}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->access$000(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)Lc8/yXb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/uXb;->remove(Lc8/yXb;)V

    .line 179
    return-void
.end method

.class public Lc8/IYm;
.super Ljava/lang/Object;
.source "PoplayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initTitle()V
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
    .line 49
    iput-object p1, p0, Lc8/IYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/IYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-virtual {v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->finish()V

    .line 53
    return-void
.end method

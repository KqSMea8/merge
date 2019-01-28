.class public Lc8/LYm;
.super Ljava/lang/Object;
.source "PoplayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initDebugUtil()V
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
    .line 108
    iput-object p1, p0, Lc8/LYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-static {}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->clearPopCounts()V

    .line 112
    iget-object v0, p0, Lc8/LYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    const-string/jumbo v1, "\u6e05\u9664\u6b21\u6570.success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method

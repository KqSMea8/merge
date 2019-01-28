.class public Lc8/NYm;
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
    .line 142
    iput-object p1, p0, Lc8/NYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 145
    new-instance v4, Lc8/MYm;

    invoke-direct {v4, p0}, Lc8/MYm;-><init>(Lc8/NYm;)V

    .line 166
    .local v4, "callBack":Lc8/xXb;
    iget-object v10, p0, Lc8/NYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    new-instance v0, Lc8/yXb;

    const/4 v1, 0x2

    const-string/jumbo v2, "huodong_normal"

    iget-object v3, p0, Lc8/NYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    const/16 v5, 0x63

    const/4 v8, 0x0

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lc8/yXb;-><init>(ILjava/lang/String;Landroid/app/Activity;Lc8/xXb;IZZZ)V

    invoke-static {v10, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->access$002(Lcom/youku/poplayer/ui/activity/PoplayerActivity;Lc8/yXb;)Lc8/yXb;

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v9, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    iget-object v0, p0, Lc8/NYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-static {v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->access$000(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)Lc8/yXb;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v0

    invoke-virtual {v0, v9}, Lc8/uXb;->tryOpen(Ljava/util/ArrayList;)V

    .line 172
    return-void
.end method

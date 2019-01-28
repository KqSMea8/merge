.class public Lc8/cWf;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eWf;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eWf;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lc8/eWf;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lc8/cWf;->this$0:Lc8/eWf;

    iput-object p2, p0, Lc8/cWf;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 266
    iget-object v0, p0, Lc8/cWf;->this$0:Lc8/eWf;

    invoke-static {v0}, Lc8/eWf;->access$100(Lc8/eWf;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lc8/cWf;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lc8/cWf;->this$0:Lc8/eWf;

    invoke-static {v1}, Lc8/eWf;->access$100(Lc8/eWf;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lc8/cWf;->this$0:Lc8/eWf;

    invoke-static {v2}, Lc8/eWf;->access$000(Lc8/eWf;)I

    move-result v2

    iget-object v3, p0, Lc8/cWf;->this$0:Lc8/eWf;

    invoke-static {v3}, Lc8/eWf;->access$100(Lc8/eWf;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 269
    :cond_0
    return-void
.end method

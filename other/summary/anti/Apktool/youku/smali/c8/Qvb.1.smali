.class public Lc8/Qvb;
.super Ljava/lang/Object;
.source "NearlyAround.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Svb;->updataList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Svb;


# direct methods
.method constructor <init>(Lc8/Svb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Svb;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/Qvb;->this$0:Lc8/Svb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v1, p0, Lc8/Qvb;->this$0:Lc8/Svb;

    invoke-static {v1}, Lc8/Svb;->access$000(Lc8/Svb;)Lc8/Rvb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Tvb;

    .line 97
    .local v0, "item":Lc8/Tvb;
    iget-object v1, p0, Lc8/Qvb;->this$0:Lc8/Svb;

    invoke-static {v1}, Lc8/Svb;->access$000(Lc8/Svb;)Lc8/Rvb;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/Rvb;->OnNearlyItemClick(Lc8/Tvb;)V

    .line 99
    .end local v0    # "item":Lc8/Tvb;
    :cond_0
    return-void
.end method

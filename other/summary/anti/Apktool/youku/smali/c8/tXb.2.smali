.class public Lc8/tXb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uXb;


# direct methods
.method constructor <init>(Lc8/uXb;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lc8/tXb;->this$0:Lc8/uXb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindCVM(Landroid/app/Activity;Lc8/nXb;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cvm"    # Lc8/nXb;
    .param p3, "tag"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 391
    iget-object v1, p0, Lc8/tXb;->this$0:Lc8/uXb;

    iget-object v1, v1, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v1, p1}, Lc8/sXb;->findContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {v0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 393
    return-void
.end method

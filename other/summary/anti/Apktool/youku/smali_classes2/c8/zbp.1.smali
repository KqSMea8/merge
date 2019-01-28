.class public Lc8/zbp;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cbp;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cbp;


# direct methods
.method constructor <init>(Lc8/Cbp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Cbp;

    .prologue
    .line 527
    iput-object p1, p0, Lc8/zbp;->this$0:Lc8/Cbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 532
    .local v0, "index":I
    iget-object v1, p0, Lc8/zbp;->this$0:Lc8/Cbp;

    invoke-static {v1}, Lc8/Cbp;->access$200(Lc8/Cbp;)Lc8/Abp;

    move-result-object v1

    if-nez v1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lc8/zbp;->this$0:Lc8/Cbp;

    invoke-static {v1}, Lc8/Cbp;->access$200(Lc8/Cbp;)Lc8/Abp;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/Abp;->onClick(I)V

    goto :goto_0
.end method

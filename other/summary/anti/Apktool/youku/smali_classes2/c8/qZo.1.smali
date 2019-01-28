.class public Lc8/qZo;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sZo;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sZo;


# direct methods
.method constructor <init>(Lc8/sZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sZo;

    .prologue
    .line 216
    iput-object p1, p0, Lc8/qZo;->this$0:Lc8/sZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lc8/qZo;->this$0:Lc8/sZo;

    iget-object v1, p0, Lc8/qZo;->this$0:Lc8/sZo;

    invoke-virtual {v1}, Lc8/sZo;->getHeight()I

    move-result v1

    iget-object v2, p0, Lc8/qZo;->this$0:Lc8/sZo;

    iget-object v2, v2, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lc8/sZo;->access$502(Lc8/sZo;I)I

    .line 220
    return-void
.end method

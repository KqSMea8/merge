.class public Lc8/Yqb;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/erb;->addAction(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/erb;


# direct methods
.method constructor <init>(Lc8/erb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/erb;

    .prologue
    .line 78
    iput-object p1, p0, Lc8/Yqb;->this$0:Lc8/erb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lc8/Yqb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$100(Lc8/erb;)Lc8/drb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/Yqb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$100(Lc8/erb;)Lc8/drb;

    move-result-object v1

    iget-object v2, p0, Lc8/Yqb;->this$0:Lc8/erb;

    sget v0, Lcom/youku/phone/R$id;->action_sheet_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v0, Lcom/youku/phone/R$id;->action_sheet_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lc8/drb;->onClick(Lc8/erb;ILjava/lang/String;)V

    .line 83
    iget-object v0, p0, Lc8/Yqb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$200(Lc8/erb;)V

    .line 85
    :cond_0
    return-void
.end method

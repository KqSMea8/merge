.class public Lc8/GLn;
.super Ljava/lang/Object;
.source "ShowH5PageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ILn;->setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ILn;


# direct methods
.method constructor <init>(Lc8/ILn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ILn;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/GLn;->this$0:Lc8/ILn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/GLn;->this$0:Lc8/ILn;

    invoke-virtual {v0}, Lc8/ILn;->dissMissDialog()V

    .line 59
    invoke-static {}, Lc8/FLn;->clickPlayDilaogActivityClose()V

    .line 60
    invoke-static {}, Lc8/zLn;->getInstance()Lc8/zLn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zLn;->clearClip()V

    .line 61
    return-void
.end method

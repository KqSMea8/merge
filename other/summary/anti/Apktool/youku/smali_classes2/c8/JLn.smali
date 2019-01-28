.class public Lc8/JLn;
.super Ljava/lang/Object;
.source "ShowVideoPageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LLn;->setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/LLn;


# direct methods
.method constructor <init>(Lc8/LLn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/LLn;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/JLn;->this$0:Lc8/LLn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lc8/JLn;->this$0:Lc8/LLn;

    invoke-virtual {v0}, Lc8/LLn;->dissMissDialog()V

    .line 63
    invoke-static {}, Lc8/FLn;->clickPlayDilaogClose()V

    .line 64
    invoke-static {}, Lc8/zLn;->getInstance()Lc8/zLn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zLn;->clearClip()V

    .line 65
    return-void
.end method

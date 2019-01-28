.class public Lc8/qYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->AddListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method constructor <init>(Lc8/UYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;

    .prologue
    .line 661
    iput-object p1, p0, Lc8/qYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 665
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 666
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 667
    iget-object v1, p0, Lc8/qYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1700(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 670
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

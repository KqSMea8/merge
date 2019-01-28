.class public Lc8/xYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Lc8/SYo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yYo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/yYo;


# direct methods
.method constructor <init>(Lc8/yYo;)V
    .locals 0
    .param p1, "this$1"    # Lc8/yYo;

    .prologue
    .line 831
    iput-object p1, p0, Lc8/xYo;->this$1:Lc8/yYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 839
    iget-object v0, p0, Lc8/xYo;->this$1:Lc8/yYo;

    iget-object v0, v0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$2700(Lc8/UYo;)V

    .line 840
    return-void
.end method

.method public hasBeenUsed(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lc8/xYo;->this$1:Lc8/yYo;

    iget-object v0, v0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v1}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 845
    iget-object v0, p0, Lc8/xYo;->this$1:Lc8/yYo;

    iget-object v0, v0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v1}, Lc8/UYo;->access$700(Lc8/UYo;Z)V

    .line 846
    invoke-static {p1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public successCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-object v0, p0, Lc8/xYo;->this$1:Lc8/yYo;

    iget-object v0, v0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$2700(Lc8/UYo;)V

    .line 835
    return-void
.end method

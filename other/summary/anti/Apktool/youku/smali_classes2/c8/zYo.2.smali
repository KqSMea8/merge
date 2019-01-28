.class public Lc8/zYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 854
    iput-object p1, p0, Lc8/zYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 858
    iget-object v0, p0, Lc8/zYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "http://www.youku.com/pub/youku/service/copyright.shtml "

    invoke-static {v0, v1}, Lc8/bzo;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    .line 859
    return-void
.end method

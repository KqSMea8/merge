.class public Lc8/wD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DD;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DD;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/DD;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lc8/wD;->this$0:Lc8/DD;

    iput-object p2, p0, Lc8/wD;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lc8/wD;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 952
    return-void
.end method

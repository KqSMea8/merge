.class public Lc8/zZb;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IZb;->getSystemDecorations()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IZb;


# direct methods
.method constructor <init>(Lc8/IZb;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lc8/zZb;->this$0:Lc8/IZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lc8/zZb;->this$0:Lc8/IZb;

    invoke-static {v0}, Lc8/IZb;->access$000(Lc8/IZb;)Lc8/uZb;

    move-result-object v0

    iget-object v1, p0, Lc8/zZb;->this$0:Lc8/IZb;

    iget v1, v1, Lc8/IZb;->id:I

    invoke-virtual {v0, v1}, Lc8/uZb;->hide(I)V

    .line 370
    return-void
.end method

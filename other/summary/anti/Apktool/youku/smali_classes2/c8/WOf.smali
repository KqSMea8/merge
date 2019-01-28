.class public Lc8/WOf;
.super Ljava/lang/Object;
.source "ImageSaveFeature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZOf;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZOf;

.field final synthetic val$callback:Lc8/XOf;


# direct methods
.method constructor <init>(Lc8/ZOf;Lc8/XOf;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lc8/WOf;->this$0:Lc8/ZOf;

    iput-object p2, p0, Lc8/WOf;->val$callback:Lc8/XOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v1, p0, Lc8/WOf;->val$callback:Lc8/XOf;

    iget-object v0, p0, Lc8/WOf;->this$0:Lc8/ZOf;

    invoke-virtual {v0}, Lc8/ZOf;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lc8/XOf;->doMethod(Landroid/widget/ImageView;)V

    .line 203
    iget-object v0, p0, Lc8/WOf;->this$0:Lc8/ZOf;

    invoke-static {v0}, Lc8/ZOf;->access$100(Lc8/ZOf;)V

    .line 204
    return-void
.end method

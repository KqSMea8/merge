.class public Lc8/lOf;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qxf",
        "<",
        "Lc8/sxf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tOf;


# direct methods
.method constructor <init>(Lc8/tOf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tOf;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/lOf;->this$0:Lc8/tOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lc8/sxf;)Z
    .locals 6
    .param p1, "e"    # Lc8/sxf;

    .prologue
    const/4 v5, 0x0

    .line 123
    iget-object v1, p0, Lc8/lOf;->this$0:Lc8/tOf;

    iget v0, v1, Lc8/tOf;->mLoadState:I

    .line 124
    .local v0, "lastState":I
    iget-object v1, p0, Lc8/lOf;->this$0:Lc8/tOf;

    iget-object v2, p0, Lc8/lOf;->this$0:Lc8/tOf;

    invoke-virtual {v2}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/lOf;->this$0:Lc8/tOf;

    invoke-static {v4}, Lc8/tOf;->access$000(Lc8/tOf;)Z

    move-result v4

    invoke-static {v1, v2, v3, v5, v4}, Lc8/tOf;->access$100(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    .line 125
    iget-object v1, p0, Lc8/lOf;->this$0:Lc8/tOf;

    iput v0, v1, Lc8/tOf;->mLoadState:I

    .line 126
    return v5
.end method

.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 115
    check-cast p1, Lc8/sxf;

    invoke-virtual {p0, p1}, Lc8/lOf;->onHappen(Lc8/sxf;)Z

    move-result v0

    return v0
.end method

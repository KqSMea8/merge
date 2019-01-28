.class public Lc8/mOf;
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
        "Lc8/pxf;",
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
    .line 130
    iput-object p1, p0, Lc8/mOf;->this$0:Lc8/tOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lc8/pxf;)Z
    .locals 6
    .param p1, "event"    # Lc8/pxf;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    const-string/jumbo v0, "UIKitImage"

    const-string/jumbo v1, "load image failed, state=%d, url=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lc8/mOf;->this$0:Lc8/tOf;

    iget v3, v3, Lc8/tOf;->mLoadState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lc8/mOf;->this$0:Lc8/tOf;

    invoke-static {v3}, Lc8/tOf;->access$200(Lc8/tOf;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/APf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p1}, Lc8/pxf;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 141
    iget-object v0, p0, Lc8/mOf;->this$0:Lc8/tOf;

    invoke-static {v0, v5}, Lc8/tOf;->access$302(Lc8/tOf;Z)Z

    .line 143
    :goto_0
    invoke-virtual {p1}, Lc8/pxf;->getTicket()Lc8/nxf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lc8/nxf;->setDone(Z)V

    .line 144
    iget-object v0, p0, Lc8/mOf;->this$0:Lc8/tOf;

    iget-object v1, p0, Lc8/mOf;->this$0:Lc8/tOf;

    invoke-virtual {v1}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/mOf;->this$0:Lc8/tOf;

    invoke-static {v3}, Lc8/tOf;->access$000(Lc8/tOf;)Z

    move-result v3

    invoke-static {v0, v1, v2, v4, v3}, Lc8/tOf;->access$100(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    .line 145
    iget-object v0, p0, Lc8/mOf;->this$0:Lc8/tOf;

    const/4 v1, 0x3

    iput v1, v0, Lc8/tOf;->mLoadState:I

    .line 148
    iget-object v0, p0, Lc8/mOf;->this$0:Lc8/tOf;

    iget-object v0, v0, Lc8/tOf;->mUserFailListener:Lc8/qxf;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lc8/mOf;->this$0:Lc8/tOf;

    iget-object v0, v0, Lc8/tOf;->mUserFailListener:Lc8/qxf;

    invoke-interface {v0, p1}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 151
    :cond_0
    return v4

    .line 138
    :sswitch_0
    iget-object v0, p0, Lc8/mOf;->this$0:Lc8/tOf;

    invoke-static {v0, v4}, Lc8/tOf;->access$302(Lc8/tOf;Z)Z

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lc8/pxf;

    invoke-virtual {p0, p1}, Lc8/mOf;->onHappen(Lc8/pxf;)Z

    move-result v0

    return v0
.end method

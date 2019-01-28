.class public final Lc8/qbo;
.super Ljava/lang/Object;
.source "PhenixUtils.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rbo;->loadImageListener(Ljava/lang/String;Landroid/widget/ImageView;IILc8/qxf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lc8/pxf;)Z
    .locals 1
    .param p1, "failPhenixEvent"    # Lc8/pxf;

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 110
    check-cast p1, Lc8/pxf;

    invoke-virtual {p0, p1}, Lc8/qbo;->onHappen(Lc8/pxf;)Z

    move-result v0

    return v0
.end method

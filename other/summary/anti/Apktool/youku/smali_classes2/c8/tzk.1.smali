.class public Lc8/tzk;
.super Ljava/lang/Object;
.source "YoukuFinalUrlInspector.java"

# interfaces
.implements Lc8/COf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inspectFinalUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 8
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/phone/phenix/PhenixUtil;->getFinalImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

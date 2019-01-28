.class public Lc8/eqb;
.super Ljava/lang/Object;
.source "ImgNode.java"

# interfaces
.implements Lc8/hqb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgNodeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/hqb",
        "<",
        "Lc8/fqb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc8/fqb;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Lc8/fqb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lc8/fqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/dqb;)V

    return-object v0
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc8/gqb;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lc8/eqb;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc8/fqb;

    move-result-object v0

    return-object v0
.end method

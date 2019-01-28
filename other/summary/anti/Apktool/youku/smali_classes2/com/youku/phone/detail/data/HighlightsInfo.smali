.class public Lcom/youku/phone/detail/data/HighlightsInfo;
.super Ljava/lang/Object;
.source "HighlightsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public duration:D

.field public pointArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/HighlightsInfo;->pointArrayList:Ljava/util/ArrayList;

    return-void
.end method

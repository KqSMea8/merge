.class public Lc8/OIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Received"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public dataId:Ljava/lang/String;

.field public source:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lc8/OIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$Received<TR;>;"
    .local p4, "data":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lc8/OIf;->dataId:Ljava/lang/String;

    .line 146
    iput p2, p0, Lc8/OIf;->source:I

    .line 147
    iput-object p3, p0, Lc8/OIf;->tag:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lc8/OIf;->data:Ljava/lang/Object;

    .line 149
    return-void
.end method

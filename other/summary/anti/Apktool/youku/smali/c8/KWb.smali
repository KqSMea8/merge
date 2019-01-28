.class public Lc8/KWb;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/RWb;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private packetHandle:Lc8/JWb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/JWb",
            "<TT;TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/JWb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/JWb",
            "<TT;TF;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    .local p2, "packetHandle":Lc8/JWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandle<TT;TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lc8/KWb;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lc8/KWb;->packetHandle:Lc8/JWb;

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    iget-object v0, p0, Lc8/KWb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketHandle()Lc8/JWb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/JWb",
            "<TT;TF;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    iget-object v0, p0, Lc8/KWb;->packetHandle:Lc8/JWb;

    return-object v0
.end method

.method public processPacket(Lc8/RWb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TF;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/KWb;, "Lcom/alibaba/mtl/godeye/control/Handler$PacketHandler<TT;TF;>;"
    .local p1, "packet":Lc8/RWb;, "TT;"
    iget-object v0, p0, Lc8/KWb;->packetHandle:Lc8/JWb;

    invoke-interface {v0, p1}, Lc8/JWb;->onProcess(Lc8/RWb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

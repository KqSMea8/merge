.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;
.super Ljava/lang/Object;
.source "ADInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLAYEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity$IMPEntity;
    }
.end annotation


# instance fields
.field private IMP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity$IMPEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    return-void
.end method


# virtual methods
.method public getIMP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity$IMPEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;->IMP:Ljava/util/List;

    return-object v0
.end method

.method public setIMP(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity$IMPEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "IMP":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity$IMPEntity;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;->IMP:Ljava/util/List;

    .line 690
    return-void
.end method

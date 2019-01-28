.class public Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;
.super Ljava/lang/Object;
.source "ADInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EMEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;
    }
.end annotation


# instance fields
.field private PLAY:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    return-void
.end method


# virtual methods
.method public getPLAY()Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;->PLAY:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;

    return-object v0
.end method

.method public setPLAY(Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;)V
    .locals 0
    .param p1, "PLAY"    # Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity;->PLAY:Lcom/youku/phone/detail/cms/dto/ADInfoDTO$VALEntity$EMEntity$PLAYEntity;

    .line 679
    return-void
.end method

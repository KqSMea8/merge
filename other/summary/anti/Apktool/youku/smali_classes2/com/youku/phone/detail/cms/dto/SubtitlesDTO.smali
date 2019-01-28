.class public Lcom/youku/phone/detail/cms/dto/SubtitlesDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "SubtitlesDTO.java"


# instance fields
.field protected className:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public subtitleType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 13
    const-string/jumbo v0, "com.youku.haibao.client.dto.MarkDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SubtitlesDTO;->className:Ljava/lang/String;

    return-void
.end method

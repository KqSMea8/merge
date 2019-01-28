.class public Lcom/youku/phone/detail/cms/dto/MarkDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "MarkDTO.java"


# instance fields
.field public bgImg:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field public style:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 15
    const-string/jumbo v0, "com.youku.haibao.client.dto.MarkDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/MarkDTO;->className:Ljava/lang/String;

    return-void
.end method

.class public Lcom/youku/phone/detail/cms/dto/ChannelDetailDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ChannelDetailDTO.java"


# instance fields
.field public channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ChannelDTO;",
            ">;"
        }
    .end annotation
.end field

.field public debugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dialog:Lcom/youku/phone/detail/cms/dto/items/DialogItemDTO;

.field public modulePage:Lcom/youku/phone/detail/cms/dto/ItemPageResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/phone/detail/cms/dto/ItemPageResult",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ModuleDTO;",
            ">;"
        }
    .end annotation
.end field

.field public parentChannel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    return-void
.end method

.class public Lcom/youku/phone/detail/cms/dto/ChannelDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ChannelDTO.java"


# instance fields
.field public abTest:Ljava/lang/String;

.field public action:Lcom/youku/phone/detail/cms/dto/ActionDTO;

.field public category:Ljava/lang/String;

.field public channelId:J

.field protected className:Ljava/lang/String;

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/items/TextItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field public greatWorksId:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public indexSubChannelId:J

.field public isChecked:Z

.field public isSelection:Z

.field public parentChannelId:J

.field public rankNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public refreshImg:Ljava/lang/String;

.field public searchKey:Ljava/lang/String;

.field public sportId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 44
    const-string/jumbo v0, "com.youku.haibao.client.dto.ChannelDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/ChannelDTO;->className:Ljava/lang/String;

    return-void
.end method

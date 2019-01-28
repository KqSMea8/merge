.class public Lc8/fbk;
.super Ljava/lang/Object;
.source "CollectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/collection/module/CollectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionCreatorInfo"
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public flag:I

.field public followersCount:Ljava/lang/String;

.field public iconPc:Ljava/lang/String;

.field public iconX2:Ljava/lang/String;

.field public iconX3:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isSubscribed:Z

.field public level:I

.field public name:Ljava/lang/String;

.field public verified:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->id:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->name:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->followersCount:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->avatar:Ljava/lang/String;

    .line 132
    iput-boolean v1, p0, Lc8/fbk;->isSubscribed:Z

    .line 133
    iput v1, p0, Lc8/fbk;->level:I

    .line 134
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->iconX2:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->iconX3:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fbk;->iconPc:Ljava/lang/String;

    .line 137
    iput v1, p0, Lc8/fbk;->flag:I

    return-void
.end method

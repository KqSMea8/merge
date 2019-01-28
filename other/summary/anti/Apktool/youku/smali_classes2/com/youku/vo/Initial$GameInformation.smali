.class public Lcom/youku/vo/Initial$GameInformation;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameInformation"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x535fe8a1fdd9142eL


# instance fields
.field public game_description:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public game_logo:Ljava/lang/String;

.field public game_name:Ljava/lang/String;

.field public game_package_name:Ljava/lang/String;

.field public game_type:Ljava/lang/String;

.field public game_type_name:Ljava/lang/String;

.field public game_url:Ljava/lang/String;

.field public game_version_code:Ljava/lang/String;

.field public game_version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

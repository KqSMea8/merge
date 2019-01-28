.class public Lc8/DDn;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# instance fields
.field public errorCode:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLocationInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lc8/DDn;->longitude:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lc8/DDn;->latitude:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lc8/DDn;->errorCode:Ljava/lang/String;

    .line 39
    return-void
.end method

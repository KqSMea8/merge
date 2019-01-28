.class public Lc8/cR;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field private static locationUtil:Lc8/cR;


# instance fields
.field public listener:Landroid/location/LocationListener;

.field private locationBuilder:Ljava/lang/StringBuilder;

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lc8/cR;->locationUtil:Lc8/cR;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc8/cR;->locationBuilder:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Lc8/bR;

    invoke-direct {v0, p0}, Lc8/bR;-><init>(Lc8/cR;)V

    iput-object v0, p0, Lc8/cR;->listener:Landroid/location/LocationListener;

    .line 24
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 23
    iput-object v0, p0, Lc8/cR;->locationManager:Landroid/location/LocationManager;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lc8/cR;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lc8/cR;->locationBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1(Lc8/cR;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lc8/cR;->locationBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/cR;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lc8/cR;->locationUtil:Lc8/cR;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lc8/cR;

    invoke-direct {v0, p0}, Lc8/cR;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/cR;->locationUtil:Lc8/cR;

    .line 31
    :cond_0
    sget-object v0, Lc8/cR;->locationUtil:Lc8/cR;

    return-object v0
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lc8/cR;->locationBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

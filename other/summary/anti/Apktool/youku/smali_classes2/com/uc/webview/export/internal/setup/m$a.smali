.class public final Lcom/uc/webview/export/internal/setup/m$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/extension/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/m;

.field private b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/m;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/m$a;->a:Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "location"

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    .line 49
    return-void
.end method


# virtual methods
.method public final removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method public final requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final requestLocationUpdatesWithUrl(Ljava/lang/String;JFLandroid/location/LocationListener;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/m$a;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 69
    :cond_0
    return-void
.end method

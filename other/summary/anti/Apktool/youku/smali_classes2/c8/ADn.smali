.class public Lc8/ADn;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lc8/jUc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/CDn;->getLocationInfo(Landroid/content/Context;Lc8/BDn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/CDn;

.field final synthetic val$locationCallback:Lc8/BDn;


# direct methods
.method constructor <init>(Lc8/CDn;Lc8/BDn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/CDn;

    .prologue
    .line 168
    iput-object p1, p0, Lc8/ADn;->this$0:Lc8/CDn;

    iput-object p2, p0, Lc8/ADn;->val$locationCallback:Lc8/BDn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lc8/ADn;->this$0:Lc8/CDn;

    iget-object v1, p0, Lc8/ADn;->val$locationCallback:Lc8/BDn;

    invoke-static {v0, p1, v1}, Lc8/CDn;->access$000(Lc8/CDn;Lcom/amap/api/location/AMapLocation;Lc8/BDn;)V

    .line 174
    iget-object v0, p0, Lc8/ADn;->this$0:Lc8/CDn;

    invoke-static {v0}, Lc8/CDn;->access$100(Lc8/CDn;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/ADn;->this$0:Lc8/CDn;

    invoke-static {v1}, Lc8/CDn;->access$200(Lc8/CDn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5b9a\u4f4d\u5931\u8d25--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "location\u4fe1\u606f\u8fd4\u56de\u4e3anull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/EDn;->d(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lc8/ADn;->this$0:Lc8/CDn;

    iget-object v0, v0, Lc8/CDn;->locationInfo:Lc8/DDn;

    const-string/jumbo v1, "location\u4fe1\u606f\u8fd4\u56de\u4e3anull"

    iput-object v1, v0, Lc8/DDn;->errorCode:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lc8/ADn;->val$locationCallback:Lc8/BDn;

    iget-object v1, p0, Lc8/ADn;->this$0:Lc8/CDn;

    iget-object v1, v1, Lc8/CDn;->locationInfo:Lc8/DDn;

    iget-object v1, v1, Lc8/DDn;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/BDn;->onCallbackFail(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lc8/ADn;->this$0:Lc8/CDn;

    invoke-static {v0}, Lc8/CDn;->access$100(Lc8/CDn;)V

    goto :goto_0
.end method

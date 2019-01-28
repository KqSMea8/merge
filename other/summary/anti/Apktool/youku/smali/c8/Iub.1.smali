.class public interface abstract Lc8/Iub;
.super Ljava/lang/Object;
.source "IWXConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hub;
    }
.end annotation


# static fields
.field public static final TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final TYPE_CELLULAR:Ljava/lang/String; = "cellular"

.field public static final TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final TYPE_MIXED:Ljava/lang/String; = "mixed"

.field public static final TYPE_MOBILE_2G:Ljava/lang/String; = "2g"

.field public static final TYPE_MOBILE_3G:Ljava/lang/String; = "3g"

.field public static final TYPE_MOBILE_4G:Ljava/lang/String; = "4g"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final TYPE_WIMAX:Ljava/lang/String; = "wimax"


# virtual methods
.method public abstract addNetworkChangeListener(Lc8/Hub;)V
    .param p1    # Lc8/Hub;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract destroy()V
.end method

.method public abstract getDownlinkMax()D
.end method

.method public abstract getNetworkType()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.class public interface abstract Lc8/sub;
.super Ljava/lang/Object;
.source "ILocatable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rub;,
        Lc8/qub;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COORDS:Ljava/lang/String; = "coords"

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final REQUEST_CUR_PERMISSION_CODE:I = 0x12

.field public static final REQUEST_PERMISSION_CODE:Ljava/lang/String; = "requestCode"

.field public static final REQUEST_WATCH_PERMISSION_CODE:I = 0x13

.field public static final WATCH_ID:Ljava/lang/String; = "watchId"


# virtual methods
.method public abstract clearWatch(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setWXSDKInstance(Lc8/nVf;)V
.end method

.method public abstract watchPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

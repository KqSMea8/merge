.class public interface abstract Lc8/Uzk;
.super Ljava/lang/Object;
.source "ISubscribe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Tzk;
    }
.end annotation


# static fields
.field public static final APP_HOVER:Ljava/lang/String; = "app-player-float"

.field public static final APP_OTHER:Ljava/lang/String; = "app-other"

.field public static final APP_PLAYER:Ljava/lang/String; = "app-player"

.field public static final APP_PROFILE:Ljava/lang/String; = "app-profile"

.field public static final APP_SEARCH:Ljava/lang/String; = "app-search"

.field public static final APP_SUBREC:Ljava/lang/String; = "app-subrec"

.field public static final APP_SV:Ljava/lang/String; = "app-sv"

.field public static final IS_MEDIA:Ljava/lang/String; = "isMedia"

.field public static final MSG_ON_SUBSCRIBE:I = 0x232e

.field public static final MSG_SUBSCRIBE_DELETE:I = 0x232c

.field public static final MSG_SUBSCRIBE_DELETE_FAIL:I = 0x232d

.field public static final MSG_SUBSCRIBE_FAIL:I = 0x232b

.field public static final MSG_SUBSCRIBE_NOT_EXIST:I = 0x232f

.field public static final MSG_SUBSCRIBE_SUCCESS:I = 0x232a

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SUSCARD_ERROR_CODE_ENOUGH:I = -0x12c

.field public static final SUSCARD_ERROR_CODE_NOT:I = -0x131

.field public static final SUSCARD_ERROR_CODE_WAIT:I = -0x132

.field public static final UID:Ljava/lang/String; = "uid"


# virtual methods
.method public varargs abstract create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V
.end method

.method public varargs abstract create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;Z[Ljava/lang/String;)V
.end method

.method public varargs abstract create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;[Ljava/lang/String;)V
.end method

.method public abstract delete(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;)V
.end method

.method public abstract delete(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;Z)V
.end method

.method public abstract delete(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V
.end method

.method public abstract isBeSubscribedOffline(Ljava/lang/String;)Z
.end method

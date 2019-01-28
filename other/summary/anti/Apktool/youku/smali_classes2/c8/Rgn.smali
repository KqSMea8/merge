.class public interface abstract Lc8/Rgn;
.super Ljava/lang/Object;
.source "IChinaUnicom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qgn;
    }
.end annotation


# static fields
.field public static final FLAG_DOWNLOAD_MESSAGE:I = 0x127ecf

.field public static final FLAG_LIVE_MESSAGE:I = 0x127e60

.field public static final FLAG_SOKU_MESSAGE:I = 0x127f3e

.field public static final FLAG_UPLOAD_MESSAGE:I = 0x127f3f


# virtual methods
.method public abstract init3GSDK(Landroid/content/Context;Landroid/os/Handler;)V
.end method

.method public abstract isHasFreeflowRelationship()Z
.end method

.method public abstract isInitChinaUnicomSDK()Z
.end method

.method public abstract showMessageDialog(Landroid/content/Context;ILc8/Qgn;)V
.end method

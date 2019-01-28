.class public interface abstract Lc8/Seq;
.super Ljava/lang/Object;
.source "Bundle.java"


# static fields
.field public static final ACTIVE:I = 0x20

.field public static final INSTALLED:I = 0x2

.field public static final RESOLVED:I = 0x4

.field public static final STARTING:I = 0x8

.field public static final STOPPING:I = 0x10

.field public static final UNINSTALLED:I = 0x1


# virtual methods
.method public abstract getBundleId()J
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getResource(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract getState()I
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract uninstall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.class public interface abstract Lc8/Jvf;
.super Ljava/lang/Object;
.source "DiskCache.java"


# static fields
.field public static final EXTREME_HIGH_PRIORITY:I = 0x33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIGH_PRIORITY:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIUM_PRIORITY:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract clear()V
.end method

.method public abstract close()Z
.end method

.method public abstract get(Ljava/lang/String;I)Lc8/exf;
.end method

.method public abstract getCatalogs(Ljava/lang/String;)[I
.end method

.method public abstract getLength(Ljava/lang/String;I)J
.end method

.method public abstract getPriority()I
.end method

.method public abstract isSupportCatalogs()Z
.end method

.method public abstract maxSize(I)V
.end method

.method public abstract open(Landroid/content/Context;)Z
.end method

.method public abstract put(Ljava/lang/String;ILjava/io/InputStream;)Z
.end method

.method public abstract put(Ljava/lang/String;I[BII)Z
.end method

.method public abstract remove(Ljava/lang/String;I)Z
.end method

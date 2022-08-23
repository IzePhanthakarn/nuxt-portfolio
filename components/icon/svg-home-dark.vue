<template>
    <svg width="1000" height="1000" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg">
        <defs>

            <linearGradient id="linearGradientId" gradientTransform="rotate(120 0.5 0.5)">
                <stop offset="0%" stop-color="#33ccff" />
                <stop offset="100%" stop-color="#cc00cc" />
            </linearGradient>

            <clipPath id="shape">
                <path fill="currentColor"
                    d="M878.5,628.5Q807,757,679.5,776Q552,795,420,831Q288,867,225.5,745Q163,623,190,510Q217,397,270,295.5Q323,194,448,139Q573,84,691,162Q809,240,879.5,370Q950,500,878.5,628.5Z">
                </path>
            </clipPath>
        </defs>

        <g clip-path="url(#shape)">
            <path fill="url(#linearGradientId)"
                d="M878.5,628.5Q807,757,679.5,776Q552,795,420,831Q288,867,225.5,745Q163,623,190,510Q217,397,270,295.5Q323,194,448,139Q573,84,691,162Q809,240,879.5,370Q950,500,878.5,628.5Z" />
        </g>

    </svg>
</template>